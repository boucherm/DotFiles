"syn match MySpecialChar /;\s*\_$\|;\s*\/\&./
syn match MySpecialChar   /,\|;\s*\_$\|;\s*\/\&.\|\(for.*\)\@<=;/
syn match MyBrac          /{\|}\|(\|)/
syn match MyOps           /=\|<\|>\|&\||\|+\|-\|*\|\.\|:\|?\|!\|\~\|\/\(\/\|*\)\@!\|%/
"                                                ^..............^ To get / and escape comments
syn match MyAccess        /\[\|\]\|\s*_\|\(=\|<\|>\|&\||\|+\|-\|*\|\.\|:\|!\|\~\|\/\/\@!\)\@=_/
"             [] brackets or _  or any MyOps followed by _
syn match MyAffect        /\(!\|=\|<\|>\)\@<!==\@!\|++\|--\|\(+\|-\|*\|\/\)=/
