# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Elderandink::Application.initialize!

WillPaginate::ViewHelpers.pagination_options[:previous_label] = '<img src="assets/Previous.jpg" alt="Prev page" />'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '<img src="assets/Next.jpg" alt="Next page" />'