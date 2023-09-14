type images = {default: string}
@module external dog1: images = "./assets/dog1.jpg"
@module external dog2: images = "./assets/dog2.jpg"
@module external dog3: images = "./assets/dog3.jpg"
@module external dog4: images = "./assets/dog4.jpg"
@module external dog5: images = "./assets/dog5.jpg"

let dogImages = [dog1, dog2, dog3, dog4, dog5]

let dogsName = ["Rex", "Alfred", "Clifford", "Betsy", "Minnie"]
let ownerName = ["Dariusz Zwane", "Jane Lis", "Cristina Navarro", "Joanna Usman", "Yan Ali"]
let dateList = [
  "Thursday 16:31",
  "Wednesday 20:55",
  "Thursday 10:16",
  "Thursday 04:39",
  "Wednesday 22:35",
]
let generateData = () => {
  let newData = Utils.faker.date.recent()
  Utils.dayjs(newData).format("dddd HH:mm")
}

type data = {
  dog: string,
  // image: string,
  owner: string,
  schedule: string,
}

let nameList = () => {
  dogsName->Belt_Array.mapWithIndex((index, dog) => {
    {
      dog,
      // image: ,
      owner: ownerName[index],
      schedule: dateList[index],
    }
  })
}
