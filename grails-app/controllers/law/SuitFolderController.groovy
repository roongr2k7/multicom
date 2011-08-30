package law

class SuitFolderController {
  def session
  static scaffold = true
  
  def changeTenant = {
    session["ten"] = params.id
    flash.message = "tenant change to: ${params.id}"
    redirect([action: 'list'])
  }
}
