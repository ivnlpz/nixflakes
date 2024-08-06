{
  description = "Templates";
  outputs=
  { self, ... }: {

  templates = {

  node = {
   path = ./nodejs;
   description = "NodeJS flake";
  };

  };
};
}
