
class I3wmMenu < RMenu::Profiles::Main

  register_profile :wm

  def build_items
    workspaces = 10.times.map do |i|
      RMenu::Item.format! "Goto Workspace #{i}", "i3-msg workspace #{i}", virtual: true
    end
    [
      RMenu::Item.format!("Kill focused window", "i3-msg kill", virtual: true),
      workspaces
    ].flatten

  end
end
