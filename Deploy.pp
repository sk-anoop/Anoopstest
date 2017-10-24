ec2_instance { 'Docker Host':
  ensure            => present,
  region            => 'ap-south-1',
  availability_zone => 'ap-south-1b',
  subnet            => 'subnet-cbb3e086',
  image_id          => 'ami-099fe766',
  instance_type     => 't2.micro',
  monitoring        => false,
  key_name          => 'Puppet-master-aw1',
  iam_instance_profile_name	=> 'user1-aw1',
  security_groups   => ['default'],
  user_data         => template('/home/ubuntu/setup.sh'),
  tags              => {
    tag_name => 'test',
  },
}
