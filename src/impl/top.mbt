///|
pub fn run() -> Result[Unit, Unit] {
  let x = @random.get_random_u64()
  let output_stream = @stdout.get_stdout()
  let _ = output_stream.write("Hello, World!\n".to_bytes().to_fixedarray())
  let _ = output_stream.write(
    ("Random number: " + x.to_string() + "\n").to_bytes().to_fixedarray(),
  )
  Ok(())
}
