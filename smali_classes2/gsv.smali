.class public Lgsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgsw;

.field final synthetic b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;Lgsw;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgsv;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    iput-object p2, p0, Lgsv;->a:Lgsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lgsv;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab2()V

    .line 61
    iget-object v0, p0, Lgsv;->a:Lgsw;

    invoke-interface {v0}, Lgsw;->b()V

    .line 62
    return-void
.end method
