syn match MyBadSemiColon  /;\s*[^\/]\&./
"syn match MyNoSemiColon /\(\({\|}\)\s*$\)\@<![^;]$\|^\s*\(#\|if\|else\|for\|while\)\@<![^;]$/
"                doesnt start with @ or doesnt end with {}
"syn match MySpecialChar /;\s*\_$\|;\s*\/\&./
syn match MySpecialChar   /,\|;\s*\_$\|;\s*\/\&.\|\(for.*\)\@<=;/
syn match MyBrac          /{\|}\|(\|)/
syn match MyOps           /=\|<\|>\|&\||\|+\|-\|*\|\.\|:\|?\|!\|\~\|\/\(\/\|*\)\@!\|%/
"                                                ^..............^ To get / and escape comments
syn match MyAccess        /\[\|\]\|\s*_\|\(=\|<\|>\|&\||\|+\|-\|*\|\.\|:\|!\|\~\|\/\/\@!\)\@=_/
"             [] brackets or _  or any MyOps followed by _
syn match   MyAffect        /\(!\|=\|<\|>\)\@<!==\@!\|++\|--\|\(+\|-\|*\|\/\||\|&\)=/
syn match   Debug         /printf( "%s %d \\n", __FUNCTION__, __LINE__ );/
"syn match cConstant nullptr
