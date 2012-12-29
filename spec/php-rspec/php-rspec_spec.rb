require 'php_vm'


describe 'test class' do
  
  before(:each) do
    
    @class_code = '
	class HelloClass {
	    public function __construct($name) {
	      $this->name = $name;
	    }

	    public function getName() {
	    return $this->name;
	    }
	}
    '
    
  end
  
  it "test for class instance property" do
    PHPVM.exec(@class_code)
    HelloClass = PHPVM::get_class("HelloClass")
    
    HelloClass.new("pippa").getName.should == ("pippa")
  end
  
  
end