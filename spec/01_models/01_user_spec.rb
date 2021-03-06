describe User do
  context 'User validations' do
    it "user is valid" do
      expect(User.create(name: "Scabbers")).to be_valid
    end

    it "invalid with no name" do
      expect(User.create(name: nil)).to_not be_valid
    end

    it "invalid if name already exists" do
      User.create(name: "Scabbers")
      expect(User.create(name: "Scabbers")).to_not be_valid
    end
  end

  context 'User relationship to Post' do
    let(:user) { @crookshanks }
    let!(:post1) { @post1 }
    let!(:post2) { @post2 }
    
    it 'has many posts' do
      
      expect(user.posts.count).to eq(2)
    end
  end

end
