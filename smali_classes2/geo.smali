.class Lgeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgen;


# direct methods
.method constructor <init>(Lgen;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lgeo;->a:Lgen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const-string v1, "https://santander.custhelp.com/app/chat/chat_santander/p/197"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lgeo;->a:Lgen;

    iget-object v1, v1, Lgen;->a:Lgej;

    invoke-static {v1}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Lgeo;->a:Lgen;

    iget-object v0, v0, Lgen;->a:Lgej;

    invoke-static {v0}, Lgej;->c(Lgej;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    return-void
.end method
