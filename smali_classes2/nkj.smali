.class public abstract Lnkj;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Z = true

.field protected static final b:Z = true

.field protected static final c:Ljava/lang/String;

.field protected static final d:Ljava/lang/String;

.field protected static final e:Ljava/lang/String;


# instance fields
.field private final f:Landroid/app/Application;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lnin;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnkd;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/io/File;

.field private final n:Lnhc;

.field private final o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnkj;->c:Ljava/lang/String;

    sput-object v0, Lnkj;->d:Ljava/lang/String;

    sput-object v0, Lnkj;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnkj;->f:Landroid/app/Application;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lnkj;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Lnkj;->h:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p4, p0, Lnkj;->i:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All parameters must non-null; and account, profile, environment must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tags.tiqcdn.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "utag"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnkj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnkj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnkj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mobile.html"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "device_os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "library_version"

    const-string v2, "5.2.0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnkj;->o:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s%ctealium%c%s%c%s%c%s"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    const/4 v4, 0x6

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnkj;->m:Ljava/io/File;

    iget-object v0, p0, Lnkj;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnkj;->l:Ljava/util/List;

    iput-boolean v6, p0, Lnkj;->p:Z

    iput-boolean v6, p0, Lnkj;->q:Z

    sget-object v0, Lnkj;->e:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->t:Ljava/lang/String;

    sget-object v0, Lnkj;->c:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->r:Ljava/lang/String;

    sget-object v0, Lnkj;->d:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnkj;->k:Ljava/util/List;

    iget-object v0, p0, Lnkj;->m:Ljava/io/File;

    invoke-static {v0}, Lnks;->a(Ljava/io/File;)Lnin;

    move-result-object v0

    iput-object v0, p0, Lnkj;->j:Lnin;

    new-instance v0, Lnhc;

    iget-object v1, p0, Lnkj;->f:Landroid/app/Application;

    iget-object v2, p0, Lnkj;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnhc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnkj;->n:Lnhc;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnkh;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnkj;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lnkj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lnkj;->g:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->g:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->f:Landroid/app/Application;

    iput-object v0, p0, Lnkj;->f:Landroid/app/Application;

    invoke-virtual {p1}, Lnkj;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnkj;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnkj;->l:Ljava/util/List;

    iget-object v0, p1, Lnkj;->o:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->o:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->k:Ljava/util/List;

    invoke-static {v0}, Lnkj;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnkj;->k:Ljava/util/List;

    iget-object v0, p1, Lnkj;->i:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->i:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->t:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->t:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->s:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->s:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->r:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->r:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->u:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->u:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->h:Ljava/lang/String;

    iput-object v0, p0, Lnkj;->h:Ljava/lang/String;

    iget-object v0, p1, Lnkj;->j:Lnin;

    iput-object v0, p0, Lnkj;->j:Lnin;

    iget-boolean v0, p1, Lnkj;->p:Z

    iput-boolean v0, p0, Lnkj;->p:Z

    iget-boolean v0, p1, Lnkj;->q:Z

    iput-boolean v0, p0, Lnkj;->q:Z

    iget-object v0, p1, Lnkj;->m:Ljava/io/File;

    iput-object v0, p0, Lnkj;->m:Ljava/io/File;

    iget-object v0, p1, Lnkj;->n:Lnhc;

    iput-object v0, p0, Lnkj;->n:Lnhc;

    return-void
.end method

.method synthetic constructor <init>(Lnkj;Lnkh;)V
    .locals 0

    invoke-direct {p0, p1}, Lnkj;-><init>(Lnkj;)V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v1, "["

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-gt v1, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v1, v3, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v0, ", "

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnkj;
    .locals 1

    new-instance v0, Lnkl;

    invoke-direct {v0, p0, p1, p2, p3}, Lnkl;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lnkj;)Lnkj;
    .locals 1

    new-instance v0, Lnkk;

    invoke-direct {v0, p0}, Lnkk;-><init>(Lnkj;)V

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnkj;->m:Ljava/io/File;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lnkj;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lnkj;->u:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lnkj;
    .locals 0

    iput-boolean p1, p0, Lnkj;->p:Z

    return-object p0
.end method

.method public final b()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lnkj;->f:Landroid/app/Application;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lnkj;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lnkj;->t:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lnkj;
    .locals 0

    iput-boolean p1, p0, Lnkj;->q:Z

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lnkj;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lnkj;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lnkj;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lnkj;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->i:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lnkj;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lnkj;

    iget-object v1, p0, Lnkj;->g:Ljava/lang/String;

    iget-object v2, p1, Lnkj;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnkj;->h:Ljava/lang/String;

    iget-object v2, p1, Lnkj;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnkj;->i:Ljava/lang/String;

    iget-object v2, p1, Lnkj;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnkj;->k:Ljava/util/List;

    iget-object v2, p1, Lnkj;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnkj;->l:Ljava/util/List;

    iget-object v2, p1, Lnkj;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnkj;->p:Z

    iget-boolean v2, p1, Lnkj;->p:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lnkj;->q:Z

    iget-boolean v2, p1, Lnkj;->q:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnkj;->r:Ljava/lang/String;

    iget-object v2, p1, Lnkj;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnkj;->s:Ljava/lang/String;

    iget-object v2, p1, Lnkj;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnkj;->t:Ljava/lang/String;

    iget-object v2, p1, Lnkj;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnkd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnkj;->k:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnkj;->l:Ljava/util/List;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lnkj;->p:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lnkj;->q:Z

    return v0
.end method

.method public final m()Lngm;
    .locals 1

    iget-object v0, p0, Lnkj;->m:Ljava/io/File;

    invoke-static {v0}, Lnks;->b(Ljava/io/File;)Lngm;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lnhc;
    .locals 1

    iget-object v0, p0, Lnkj;->n:Lnhc;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkj;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Lnin;
    .locals 1

    iget-object v0, p0, Lnkj;->j:Lnin;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "    "

    const-string v1, ": "

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v2, Lnkf;->enabled:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v3, Lnkf;->disabled:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v5, Lnkf;->config_account_name:I

    invoke-virtual {v1, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v6, Lnkf;->config_profile_name:I

    invoke-virtual {v1, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v7, Lnkf;->config_environment_name:I

    invoke-virtual {v1, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v8, Lnkf;->config_override_dispatch_url:I

    invoke-virtual {v1, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v9, Lnkf;->config_override_publish_settings_url:I

    invoke-virtual {v1, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v10, Lnkf;->config_override_publish_url:I

    invoke-virtual {v1, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v11, Lnkf;->config_override_s2s_legacy_url:I

    invoke-virtual {v1, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v12, Lnkf;->config_dispatch_validators:I

    invoke-virtual {v1, v12}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v13, Lnkf;->config_event_listeners:I

    invoke-virtual {v1, v13}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v14, Lnkf;->config_remote_commands:I

    invoke-virtual {v1, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->f:Landroid/app/Application;

    sget v15, Lnkf;->config_cookie_manager_enabled:I

    invoke-virtual {v1, v15}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnkj;->f:Landroid/app/Application;

    move-object/from16 v16, v0

    sget v17, Lnkf;->config_publish_settings:I

    invoke-virtual/range {v16 .. v17}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lnkj;->j:Lnin;

    invoke-virtual {v1}, Lnin;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "(default)"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "{"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->g:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->t:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->t:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->s:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->s:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->r:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->r:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->u:Ljava/lang/String;

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->u:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->k:Ljava/util/List;

    invoke-static {v5}, Lnkj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lnkj;->l:Ljava/util/List;

    invoke-static {v5}, Lnkj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnkj;->p:Z

    if-eqz v1, :cond_5

    move-object v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lnkj;->q:Z

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnkj;->j:Lnin;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lnin;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    const-string v1, "(cached)"

    goto/16 :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_1

    :cond_6
    move-object v2, v3

    goto :goto_2
.end method
