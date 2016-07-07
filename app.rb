require('sinatra')
require('sinatra/reloader')
require('./lib/email_address')
require('./lib/mailing_address')
require('./lib/phone_number')
require('./lib/contact')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contacts_form)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

post('/contacts/contacts') do
  erb(:contacts_form)
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  company = params.fetch('company')

  Contact.new(first_name, last_name, job_title, company).save()
  @contacts = Contact.all()
  erb(:success)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i)
  erb(:contact)
end
