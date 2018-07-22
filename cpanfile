requires 'Mojolicious';
requires 'YAML::XS';
requires 'Mojolicious::Plugin::OpenAPI'; # server side plugin

on test => sub {
  requires 'Test::Mojo';
};
