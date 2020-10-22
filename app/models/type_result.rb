class TypeResult < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: '完璧主義者',never_do: 'やりかけの仕事を途中で人に任せること。 自分に対する批判を笑い飛ばすこと'},
    { id: 3, name: '献身家',never_do: '同僚からの侮辱をすぐ忘れること。 電話を先に切ること'},
    { id: 4, name: '達成者',never_do: '注目されないこと'},
    { id: 5, name: '芸術家',never_do: 'ルールや常識を率先して守ること'},
    { id: 6, name: '研究者',never_do: '不明瞭な仮説を皆の前で話すこと'},
    { id: 7, name: '堅実家',never_do: '人の意見を聞かずに転職すること'},
    { id: 8, name: '楽天家',never_do: '他人の悩みに長時間耳を傾けること'},
    { id: 9, name: '統率者',never_do: '部下の思ったとおりに仕事をさせること'},
    { id: 10, name: '調停者',never_do: '物事をテキパキこなすこと'}
  ]
end
