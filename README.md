# AsciiPlz


vim-asciiplz is a variation of https://github.com/dsummersl/vim-utf2ascii

The primary differences are:
* As implemented, the original only worked if the vim user to set the following:
```vimrc
:set encoding=utf-8
:set fileencoding=utf-8
```
... which usually meant that, given a modern vim, the multibyte UTF8 characters were already rendering correctly, anyway.  If the user has a reason for not setting vim's encoding to utf-8, then vim-utf2ascii's search/replace would fail.
* This 'vim-asciiplz' variant is designed to work with the `latin1` encoding.  Additionally, 

## Example

### Before
![image](https://user-images.githubusercontent.com/3289700/131205256-4a79e3f4-4297-4bd4-8230-b85a58d689b8.png)

### After
![image](https://user-images.githubusercontent.com/3289700/131205267-7a845e93-ff12-41ca-8a32-1759cdb07562.png)

## Usage

```vimrc
call asciiplz#ReplaceUTF()
```

## Recommended .vimrc configuration

```vimrc
set isprint=|set display+=uhex
command! AsciiPlz :call asciiplz#ReplaceUTF()
map <F4> :AsciiPlz<CR>
```

