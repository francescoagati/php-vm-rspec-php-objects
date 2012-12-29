require 'php_vm'


describe 'test class' do
  
  before(:each) do
    
    @class_code = '
	class HelloClass
	{
	public function __construct($name)
	{
	$this->name = $name;
	}


	// instance

	public function getName()
	{
	 return $this->name;
	}

	public function instanceSayHello()
	{
	var_dump($this->instanceGetHello());
	}


	// static

	public static function staticGetHello($name)
	{
	return "Hello {$name}!!";
	}

	public static function staticSayHello($name)
	{
	var_dump(self::staticGetHello($name));
	}
	}
    '
    
  end
  
  it "1==1" do
    PHPVM.exec(@class_code)
    HelloClass = PHPVM::get_class("HelloClass")
    
    HelloClass.new("pippa").getName.should == ("pippa")
  end
  
  
end