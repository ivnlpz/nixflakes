{
  description = "Templates";
  outputs=
  { self, ... }: {

  templates = {

  node = {
   path = ./nodejs;
   description = "NodeJS flake";
  };

  node_legacy = {
   path = ./nodejs_legacy;
   description = "NodeJS v. 18 flake";
  };
  };
};
}
