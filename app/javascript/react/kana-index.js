import React from "react"
import CharacterBlock from "./character-block"

const kanaColors = {
  "あ": "#f80",
  "い": "#f1c40f",
  "う": "#2ecc71",
  "え": "#3498db",
  "お": "#9b59b6",
  "ん": "#e74c3c",
}

class KanaIndex extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      kanaList: [],
      filters: {
        standard: true,
        dakuten: false,
        handakuten: false,
        youon: false,
        obsolete: false
      }
    }

    this.fetchKanaList = this.fetchKanaList.bind(this)
    this.onChangeCheckBox = this.onChangeCheckBox.bind(this)
  }

  componentDidMount() {
    this.fetchKanaList()
  }

  onChangeCheckBox(event) {
    const filters = Object.assign({}, this.state.filters)
    filters[event.target.value] = event.target.checked

    this.setState({
      filters: filters
    })
  }

  fetchKanaList() {
    fetch("/api/v1/kana")
      .then(res => res.json())
      .then(data => {
        this.setState({
          kanaList: data
        })
      })
  }

  render() {
    const filters = this.state.filters

    const kanaList = this.state.kanaList.filter(kana => {
      const hideDakuten = kana.dakuten && filters.dakuten
      const hideHandakuten = kana.handakuten && filters.handakuten
      const hideYouon = kana.youon && filters.youon
      const hideObsolete = kana.obsolete && filters.obsolete
      const hideStandard = !kana.dakuten && !kana.handakuten && !kana.youon && !kana.obsolete && filters.standard

      return (hideStandard || hideDakuten || hideHandakuten || hideYouon || hideObsolete)
    })

    const inputs = Object.keys(this.state.filters).map(key =>
      <label className="filter">
        {key}
        <input
          type="checkbox"
          key={key}
          value={key}
          checked={this.state.filters[key]}
          onChange={this.onChangeCheckBox}
        />
      </label>
    )

    //kanaList.sort((a, b) => b.rating - a.rating)
    const kanaCards = kanaList.map(kana =>
      <CharacterBlock
        character={kana.hiragana}
        rating={kana.rating}
        url={"/kana/" + kana.hiragana}
      />
    )

    return (
      <div>
        <div className="kana-label">Kana: {kanaList.length}</div>
        <div className="filters">
          {inputs}
        </div>
        <div className="kana-list">
          {kanaCards}
        </div>
      </div>
    )
  }
}

export default KanaIndex
