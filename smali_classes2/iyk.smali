.class Liyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liyi;


# direct methods
.method constructor <init>(Liyi;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Liyk;->a:Liyi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->f()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 252
    iget-object v0, p0, Liyk;->a:Liyi;

    iget-object v0, v0, Liyi;->a:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->c(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)V

    .line 253
    return-void
.end method
