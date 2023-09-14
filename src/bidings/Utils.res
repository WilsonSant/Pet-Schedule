@module("@faker-js/faker") external faker: Faker.faker = "faker"
@module external dayjs: string => Day.day = "dayjs"
type axios
@module("axios") external axios: axios = "default"
@send external get: (axios, string) => Js.Promise.t<'data> = "get"
