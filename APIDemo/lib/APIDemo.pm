package APIDemo;
use Dancer2;
use Dancer2::Plugin::DBIC;

our $VERSION = '0.1';

get '/' => sub {
  template 'index' => {
    title => 'APIDemo',
    clients => [ schema->resultset('Client')->all ],
  };
};

patch '/api/update_attribute' => sub {

  my $input = decode_json(request->content);

  my $rs = schema->resultset($input->{resultset});

  my $object = $rs->find($input->{id});

  if ($object) {
    $object->update($input->{update});
  }

  content_type('application/json');

  return 200;
};

true;
