use utf8;
package APIDemo::Schema::Result::Project;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

APIDemo::Schema::Result::Project

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<project>

=cut

__PACKAGE__->table("project");

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

=head2 client_id

  data_type: 'int'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "code",
  { data_type => "varchar", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1 },
  "client_id",
  { data_type => "int", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 client

Type: belongs_to

Related object: L<APIDemo::Schema::Result::Client>

=cut

__PACKAGE__->belongs_to(
  "client",
  "APIDemo::Schema::Result::Client",
  { id => "client_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-10-10 11:18:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:chRfgujKlOqc/E9qA/JDmg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
