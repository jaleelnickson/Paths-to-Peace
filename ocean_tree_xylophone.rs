fn main(){

	// Variables to track the number of peace declarations and commitments
	let mut peace_declarations = 0;
	let mut peace_commitments = 0;

	// An example of a peace declaration
	let peace_declaration = "We declare today, in this shared moment, that peace will prevail";

	// Increment the number of peace declarations
	peace_declarations += 1;

	// Create a function to make a shared peace commitment
	fn make_peace_commitment(words: &str) {
		// Increment the number of peace commitments
		peace_commitments += 1;

		// Print the words of the commitment
		println!("{}", words);
	}

	// Create a few peace commitments
	make_peace_commitment("We commit to creating meaningful connections with those who are different from us",);
	make_peace_commitment("We vow to respect the dignity and worth of all people",);
	make_peace_commitment("We promise to listen more than we speak",);

	// Create a function to recognize peace agreements
	fn recognize_peace_agreement(name: &str, declaration: &str) {
		// Print the name of the peace agreement
		println!("The {} peace agreement:", name);

		// Print the words of the declaration
		println!("{}", declaration);
	}

	// Recognize a peace agreement
	recognize_peace_agreement("Paths to Peace", peace_declaration);

	// Print the number of peace declarations and commitments
	println!("Number of peace declarations: {}", peace_declarations);
	println!("Number of peace commitments: {}", peace_commitments);

}