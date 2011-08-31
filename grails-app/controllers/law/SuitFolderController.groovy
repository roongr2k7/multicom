package law

class SuitFolderController {
  def session


  def changeTenant = {
    session["ten"] = params.id
    flash.message = "tenant change to: ${params.id}"
    redirect([action: 'list'])
  }
   static scaffold = true
}
