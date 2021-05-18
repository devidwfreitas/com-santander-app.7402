.class public Litw;
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
    .line 158
    iput-object p1, p0, Litw;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Litw;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v0}, Lmyl;->d(Landroid/app/Activity;)V

    .line 162
    return-void
.end method
