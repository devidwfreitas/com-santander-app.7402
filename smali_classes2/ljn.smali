.class public Lljn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lljn;->a:Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lljn;->a:Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/FullScreenInfoActivity;->finish()V

    .line 67
    return-void
.end method
