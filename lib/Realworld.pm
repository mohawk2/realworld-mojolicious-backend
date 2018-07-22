package Realworld;
use Mojo::Base 'Mojolicious';
use YAML::XS;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');

  my $startspec = Load $self->static->file("api.yaml")->path;
  $self->plugin(OpenAPI => {spec => $startspec});
}

1;
