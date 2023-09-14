type images = {default: string}
@module external dog1: images = "./assets/dog1.jpg"
@module external dog2: images = "./assets/dog2.jpg"
@module external dog3: images = "./assets/dog3.jpg"
@module external dog4: images = "./assets/dog4.jpg"
@module external dog5: images = "./assets/dog5.jpg"

let dogImages = [dog1, dog2, dog3, dog4, dog5]

let dogsName = ["Rex", "Alfred", "Clifford", "Betsy", "Minnie"]

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
  dogsName->Belt_Array.map(dog => {
    {
      dog,
      // image: ,
      owner: Utils.faker.person.fullName(),
      schedule: generateData(),
    }
  })
}
