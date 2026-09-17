test_that("praise works correctly", {
  expect_identical(praise("Thomas"), "You're the best, Thomas!")
  expect_identical(praise("Alice", "!!!"), "You're the best, Alice!!!")
})

test_that("praise handles different inputs", {
  expect_identical(praise(""), "You're the best, !")
  expect_error(praise())  # Missing required argument
})

test_that("praise output format is consistent", {
  result <- praise("Test")
  expect_type(result, "character")
  expect_length(result, 1)
  expect_match(result, "You're the best, Test!")
})
