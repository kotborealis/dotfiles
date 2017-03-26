[
	'.bash_aliases',
	'.bashrc',
	'.gitconfig',
	'.zshrc',
	'.jetbrains',

	'.oh-my-zsh/custom/kotborealis.zsh-theme'
]
.forEach(file => {
	const source = `$(pwd)/${file}`;
	const target = `$HOME/${file}`;
	console.log(`ln -fs ${source} ${target}`);
});