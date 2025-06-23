# Contributing to EzClickVideoMaker

Thank you for your interest in contributing to EzClickVideoMaker! This document provides guidelines for contributing to the project.

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for all contributors.

## Getting Started

### Prerequisites

- Node.js 18+ and npm
- Git
- Code editor (VS Code recommended)
- Supabase account for testing

### Development Setup

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/your-username/ezclickvideomaker.git
   cd ezclickvideomaker
   ```
3. Install dependencies:
   ```bash
   npm install
   ```
4. Copy environment variables:
   ```bash
   cp .env.example .env.local
   ```
5. Fill in your Supabase credentials in `.env.local`
6. Start development server:
   ```bash
   npm run dev
   ```

## Development Guidelines

### Code Style

- Use TypeScript for all new code
- Follow existing code formatting (ESLint configuration)
- Use meaningful variable and function names
- Add comments for complex logic
- Keep components small and focused

### Component Guidelines

- Use functional components with hooks
- Implement proper error boundaries
- Follow the existing component structure
- Use Tailwind CSS for styling
- Ensure components are responsive

### File Organization

- Components in `src/components/`
- Pages in `src/pages/`
- Utilities in `src/lib/`
- Hooks in `src/hooks/`
- Types in component files or separate `.types.ts` files

## Submitting Changes

### Pull Request Process

1. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. Make your changes
3. Test your changes thoroughly
4. Commit with descriptive messages:
   ```bash
   git commit -m "feat: add voice preview functionality"
   ```
5. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
6. Create a Pull Request

### Commit Message Format

Use conventional commits:
- `feat:` - New features
- `fix:` - Bug fixes
- `docs:` - Documentation changes
- `style:` - Code style changes
- `refactor:` - Code refactoring
- `test:` - Adding tests
- `chore:` - Maintenance tasks

### Pull Request Guidelines

- Provide clear description of changes
- Include screenshots for UI changes
- Reference related issues
- Ensure all checks pass
- Keep PRs focused and atomic

## Testing

- Test your changes in different browsers
- Test responsive design on mobile devices
- Verify accessibility features work
- Test with different user scenarios

## Bug Reports

When reporting bugs, include:
- Steps to reproduce
- Expected behavior
- Actual behavior
- Browser and OS information
- Screenshots if applicable

## Feature Requests

For feature requests:
- Describe the problem you're trying to solve
- Explain why this feature would be valuable
- Provide examples or mockups if possible

## Questions and Support

For questions about contributing:
- Check existing issues and discussions
- Email: Ezclickvideomaker@gmail.com
- Be patient and respectful when asking for help

## License

By contributing, you agree that your contributions will be licensed under the same terms as the project.

Thank you for contributing to EzClickVideoMaker!