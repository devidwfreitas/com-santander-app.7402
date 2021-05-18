.class public Liug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;I)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Liug;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    iput p2, p0, Liug;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Liug;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Liug;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Liug;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->e()V

    .line 288
    return-void
.end method
