.class Lamd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lamc;


# direct methods
.method constructor <init>(Lamc;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lamd;->a:Lamc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lamd;->a:Lamc;

    invoke-static {v0}, Lamc;->a(Lamc;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lamd;->a:Lamc;

    invoke-static {v3}, Lamc;->b(Lamc;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 105
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lamd;->a:Lamc;

    invoke-static {v2}, Lamc;->c(Lamc;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lamd;->a:Lamc;

    invoke-static {v2}, Lamc;->c(Lamc;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lamd;->a:Lamc;

    invoke-static {v1}, Lamc;->d(Lamc;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lamd;->a:Lamc;

    .line 109
    invoke-static {v2}, Lamc;->d(Lamc;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lalv;->comprovante_share_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lamd;->a:Lamc;

    invoke-static {v0}, Lamc;->e(Lamc;)Lame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lamd;->a:Lamc;

    invoke-static {v0}, Lamc;->e(Lamc;)Lame;

    move-result-object v0

    invoke-interface {v0}, Lame;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lamd;->a:Lamc;

    invoke-static {v1}, Lamc;->e(Lamc;)Lame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lamd;->a:Lamc;

    invoke-static {v1}, Lamc;->e(Lamc;)Lame;

    move-result-object v1

    invoke-interface {v1, v0}, Lame;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
