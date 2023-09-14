@react.component
let make = () => {
  let list = Data.nameList()

  <div className="bg-red-400 flex border-2 rounded h-max border-red-400">
    <TableContainer>
      <Table>
        <TableHead>
          <TableRow>
            <TableCell> {React.string("Dog")} </TableCell>
            <TableCell> {React.string("Owner")} </TableCell>
            <TableCell> {React.string("Schedule")} </TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {list->Belt_Array.mapWithIndex((index, item) => {
            <TableRow key={item.dog}>
              <TableCell>
                <React.Fragment>
                  <Avatar
                    sx={{height: 56, width: 56}} alt="Dog Photo" src={Data.dogImages[index].default}
                  />
                 <p className="text-2xl font-bold text-center font-serif"> {React.string(item.dog)}</p>
                </React.Fragment>
              </TableCell>
              <TableCell> {React.string(item.owner)} </TableCell>
              <TableCell> {React.string(item.schedule)} </TableCell>
            </TableRow>
          })}
        </TableBody>
      </Table>
    </TableContainer>
  </div>
}
