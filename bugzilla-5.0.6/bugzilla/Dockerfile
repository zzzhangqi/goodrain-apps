FROM fedora:34
ADD localconfig /etc/bugzilla/localconfig
ADD startup.sh /root/startup.sh
RUN curl -o /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo \
    && curl -o /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo \
    && sudo yum makecache && yum -y install bugzilla httpd \
    && yum -y install vim net-tools httpd mysql-server mod_perl mod_perl-devel httpd-devel gd-devel mysql-devel graphviz patchutils gcc 'perl(Apache2::SizeLimit)' 'perl(Authen::Radius)' 'perl(Authen::SASL)' 'perl(Cache::Memcached)' 'perl(CGI)' 'perl(Chart::Lines)' 'perl(Daemon::Generic)' 'perl(Date::Format)' 'perl(DateTime)' 'perl(DateTime::TimeZone)' 'perl(DBI)' 'perl(Digest::SHA)' 'perl(Email::MIME)' 'perl(Email::Reply)' 'perl(Email::Sender)' 'perl(Encode)' 'perl(Encode::Detect)' 'perl(File::MimeInfo::Magic)' 'perl(GD)' 'perl(GD::Graph)' 'perl(GD::Text)' 'perl(HTML::FormatText::WithLinks)' 'perl(HTML::Parser)' 'perl(HTML::Scrubber)' 'perl(IO::Scalar)' 'perl(JSON::RPC)' 'perl(JSON::XS)' 'perl(List::MoreUtils)' 'perl(LWP::UserAgent)' 'perl(Math::Random::ISAAC)' 'perl(MIME::Parser)' 'perl(mod_perl2)' 'perl(Net::LDAP)' 'perl(Net::SMTP::SSL)' 'perl(PatchReader)' 'perl(SOAP::Lite)' 'perl(Template)' 'perl(Template::Plugin::GD::Image)' 'perl(Test::Taint)' 'perl(TheSchwartz)' 'perl(URI)' 'perl(XMLRPC::Lite)' 'perl(XML::Twig)'
VOLUME [ "/var/lib/bugzilla/data","/var/lib/bugzilla/graphs"]
EXPOSE 80
CMD sh /root/startup.sh