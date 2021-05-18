.class public Lkey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lkey;->a:Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lkey;->a:Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://santander.custhelp.com/app/chat/chat_santander/p/94"

    .line 65
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
