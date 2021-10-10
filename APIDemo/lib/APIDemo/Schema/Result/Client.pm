use utf8;
package APIDemo::Schema::Result::Client;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

APIDemo::Schema::Result::Client

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<client>

=cut

__PACKAGE__->table("client");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 code

  data_type: 'varchar'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 1

=head2 email

  data_type: 'varchar'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "code",
  { data_type => "varchar", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1 },
  "email",
  { data_type => "varchar", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 projects

Type: has_many

Related object: L<APIDemo::Schema::Result::Project>

=cut

__PACKAGE__->has_many(
  "projects",
  "APIDemo::Schema::Result::Project",
  { "foreign.client_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-10-10 11:18:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MY3HzU3nHdH6fAvaLAgTyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
