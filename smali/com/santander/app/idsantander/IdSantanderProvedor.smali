.class public Lcom/santander/app/idsantander/IdSantanderProvedor;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "com.santander.app.idsantander.idsantanderprovedor"

.field private static final c:Ljava/lang/String; = "F39768E84C44CB493774B611C4156"

.field private static final d:Ljava/lang/String; = "819B98B42786BFBEC717C789AF7B3"

.field private static final e:Ljava/lang/String; = "0fk"

.field private static final f:Landroid/content/UriMatcher;


# instance fields
.field private g:Lakf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/santander/app/idsantander/IdSantanderProvedor;->f:Landroid/content/UriMatcher;

    .line 37
    sget-object v0, Lcom/santander/app/idsantander/IdSantanderProvedor;->f:Landroid/content/UriMatcher;

    const-string v1, "com.santander.app.idsantander.idsantanderprovedor"

    const-string v2, "F39768E84C44CB493774B611C4156"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/santander/app/idsantander/IdSantanderProvedor;->f:Landroid/content/UriMatcher;

    const-string v1, "com.santander.app.idsantander.idsantanderprovedor"

    const-string v2, "819B98B42786BFBEC717C789AF7B3"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/santander/app/idsantander/IdSantanderProvedor;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/santander/app/idsantander/IdSantanderProvedor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    sget-object v1, Lcom/santander/app/idsantander/IdSantanderProvedor;->f:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/santander/app/idsantander/IdSantanderProvedor;->a()Z

    move-result v0

    .line 104
    :cond_0
    return v0

    .line 98
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/santander/app/idsantander/IdSantanderProvedor;->g:Lakf;

    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/IdSantanderProvedor;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lakf;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0fk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/IdSantanderProvedor;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, ""

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/IdSantanderProvedor;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/santander/app/idsantander/IdSantanderProvedor;->g:Lakf;

    invoke-virtual {v0, p1, p2}, Lakf;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/santander/app/idsantander/IdSantanderProvedor;->g:Lakf;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lakf;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/idsantander/IdSantanderProvedor;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    new-instance v1, Lakf;

    invoke-direct {v1, v0}, Lakf;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/santander/app/idsantander/IdSantanderProvedor;->g:Lakf;

    .line 48
    iget-object v0, p0, Lcom/santander/app/idsantander/IdSantanderProvedor;->g:Lakf;

    invoke-virtual {v0}, Lakf;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "Outros_IDSantander_Tratamento_Excecao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/santander/app/idsantander/IdSantanderProvedor;->g:Lakf;

    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/IdSantanderProvedor;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, p3

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lakf;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0fk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/IdSantanderProvedor;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
