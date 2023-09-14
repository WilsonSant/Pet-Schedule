let index = (): React.element => {
  <div
    style={{backgroundImage: `url("./background.png")`}}
    className="flex w-screen h-screen justify-center items-center">
    <div className="flex bg-pink-200 border-2 p-8 border-pink-200 rounded flex-row ">
      <div className="flex flex-row">
        <div className="absolute  h-16 w-12 ">
          <img src="./paw.png" alt="Loading..."/>
        </div>
        <div className="space-y-6 text-center">
          <p className="text-4xl font-sans font-thin"> {React.string("Pet Schedules")} </p>
          <p className="text-medium text-gray-600 font-bold">
            {React.string("Check the week's appointments")}
          </p>
          <MainTable />
        </div>
      </div>
    </div>
  </div>
}
