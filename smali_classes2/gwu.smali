.class Lgwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgta;

.field final synthetic b:Lgwt;


# direct methods
.method constructor <init>(Lgwt;Lgta;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lgwu;->b:Lgwt;

    iput-object p2, p0, Lgwu;->a:Lgta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lgwu;->b:Lgwt;

    invoke-static {v0}, Lgwt;->a(Lgwt;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lgwu;->a:Lgta;

    invoke-virtual {v3}, Lgta;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v0, p0, Lgwu;->b:Lgwt;

    invoke-static {v0}, Lgwt;->b(Lgwt;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 175
    return-void
.end method
