import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
	render(<App />);
	const linkElement = screen.getByText(/Eat Pizza! Yay!/i);
	expect(linkElement).toBeInTheDocument();
});

test('returns true', () => {
	expect(true).toBe(true);
});
test('returns true', () => {
	expect(true).toBe(true);
});
