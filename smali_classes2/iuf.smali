.class public Liuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Liuf;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Liuf;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;

    move-result-object v0

    invoke-interface {v0}, Liun;->b()V

    .line 278
    return-void
.end method
