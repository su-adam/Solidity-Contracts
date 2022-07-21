const TodoList = artifacts.require('./ReadingList.sol')

contract('Reading', (accounts) => {
  before(async () => {
    this.readingList = await ReadingList.deployed()
  })

  it('deploys successfully', async () => {
    const address = await this.readingList.address
    assert.notEqual(address, 0x0)
    assert.notEqual(address, '')
    assert.notEqual(address, null)
    assert.notEqual(address, undefined)
  })

  it('lists books', async () => {
    const bookCount = await this.bookList.bookCount()
    const book = await this.bookList.tasks(bookCount)
    assert.equal(book.id.toNumber(), bookCount.toNumber())
    assert.equal(book.content, 'Check out the Reading list')
    assert.equal(book.completed, false)
    assert.equal(bookCount.toNumber(), 1)
  })

  it('creates book', async () => {
    const result = await this.bookList.createBook('A new book')
    const bookCount = await this.bookList.bookCount()
    assert.equal(bookCount, 2)
    const event = result.logs[0].args
    assert.equal(event.id.toNumber(), 2)
    assert.equal(event.content, 'A new book')
    assert.equal(event.completed, false)
  })

  it('toggles book completion', async () => {
    const result = await this.bookList.toggleCompleted(1)
    const book = await this.bookList.tasks(1)
    assert.equal(book.completed, true)
    const event = result.logs[0].args
    assert.equal(event.id.toNumber(), 1)
    assert.equal(event.completed, true)
  })

})