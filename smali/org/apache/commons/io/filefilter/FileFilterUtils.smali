.class public Lorg/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 724
    new-array v0, v4, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "CVS"

    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 728
    new-array v0, v4, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, ".svn"

    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static ageFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 583
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 597
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 556
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 569
    new-instance v0, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static varargs and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-static {p0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static andFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 516
    new-instance v0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method private static filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;>(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file filter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    if-eqz p1, :cond_3

    .line 274
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 275
    if-nez v0, :cond_2

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file collection contains null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    invoke-interface {p0, v0}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_3
    return-object p2
.end method

.method public static filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)[Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public static varargs filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file filter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p1, :cond_1

    .line 81
    new-array v0, v0, [Ljava/io/File;

    .line 92
    :goto_0
    return-object v0

    .line 83
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, p1, v0

    .line 85
    if-nez v3, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file array contains null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    invoke-interface {p0, v3}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_0
.end method

.method public static filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static varargs filterList(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static varargs filterSet(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0, p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->filter(Lorg/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;J)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 679
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static magicNumberFileFilter([B)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([B)V

    return-object v0
.end method

.method public static magicNumberFileFilter([BJ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 719
    new-instance v0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-object v0
.end method

.method public static makeCVSAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3

    .prologue
    .line 741
    if-nez p0, :cond_0

    .line 742
    sget-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 744
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 775
    if-nez p0, :cond_0

    .line 776
    sget-object v0, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 778
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    goto :goto_0
.end method

.method public static makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 791
    sget-object v0, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 793
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/FileFileFilter;->FILE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    goto :goto_0
.end method

.method public static makeSVNAware(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 3

    .prologue
    .line 758
    if-nez p0, :cond_0

    .line 759
    sget-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lorg/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nameFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lorg/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static varargs or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Lorg/apache/commons/io/filefilter/OrFileFilter;

    invoke-static {p0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lorg/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 6

    .prologue
    .line 637
    new-instance v0, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 638
    new-instance v1, Lorg/apache/commons/io/filefilter/SizeFileFilter;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 639
    new-instance v2, Lorg/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static suffixFileFilter(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static varargs toList([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 454
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The filter["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_1
    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_2
    return-object v1
.end method

.method public static trueFileFilter()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method
