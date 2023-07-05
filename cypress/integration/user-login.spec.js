describe('example to-do app', () => {
  beforeEach(() => {
    cy.visit('http://0.0.0.0:3000');
  });

  it("Checks if a user can log in and is taken to the homepage", () => {
    cy.get('.nav-link').contains('Login').click();
    cy.get('#email').type('a@a.com');
    cy.get('#password').type('111');
    cy.get('input[name="commit"]').click();
    cy.get(".products article").should("be.visible");
  });

  it("Checks if a user can create a new account and is taken to the homepage", () => {
    cy.get('.nav-link').contains('Signup').click();
    cy.get('#user_name').type('Clay')
    cy.get('#user_email').type('z@a.com');
    cy.get('#user_password').type('12345');
    cy.get('#user_password_confirmation').type('12345');
    cy.get('input[name="commit"]').click();
    cy.get(".products article").should("be.visible");
  });
});