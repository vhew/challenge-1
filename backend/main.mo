import Array "mo:base/Array";
import Text "mo:base/Text";

actor {
  private var names : [Text] = [];

  public query func greet(name : Text) : async Text {
    return "G'day, " # name # "!";
  };

  public query func submittedNames() : async [Text] {
    return names;
  };

  public func store(name : Text) : async [Text] { 
    names := Array.append<Text>(names, [name]);
    return names;
  };
};
