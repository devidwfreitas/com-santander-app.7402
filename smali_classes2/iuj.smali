.class public Liuj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Liuj;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    iput-object p2, p0, Liuj;->a:Ljava/lang/String;

    iput-object p3, p0, Liuj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Liuj;->a:Ljava/lang/String;

    iget-object v1, p0, Liuj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Liuj;->c:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;

    move-result-object v0

    invoke-interface {v0, p1}, Liun;->b(Landroid/view/View;)V

    .line 361
    return-void
.end method
