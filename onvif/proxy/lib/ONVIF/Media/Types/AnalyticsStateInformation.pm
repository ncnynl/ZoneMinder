package ONVIF::Media::Types::AnalyticsStateInformation;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %AnalyticsEngineControlToken_of :ATTR(:get<AnalyticsEngineControlToken>);
my %State_of :ATTR(:get<State>);

__PACKAGE__->_factory(
    [ qw(        AnalyticsEngineControlToken
        State

    ) ],
    {
        'AnalyticsEngineControlToken' => \%AnalyticsEngineControlToken_of,
        'State' => \%State_of,
    },
    {
        'AnalyticsEngineControlToken' => 'ONVIF::Media::Types::ReferenceToken',
        'State' => 'ONVIF::Media::Types::AnalyticsState',
    },
    {

        'AnalyticsEngineControlToken' => 'AnalyticsEngineControlToken',
        'State' => 'State',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::AnalyticsStateInformation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AnalyticsStateInformation from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AnalyticsEngineControlToken


=item * State




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::AnalyticsStateInformation
   AnalyticsEngineControlToken => $some_value, # ReferenceToken
   State =>  { # ONVIF::Media::Types::AnalyticsState
     Error =>  $some_value, # string
     State =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

