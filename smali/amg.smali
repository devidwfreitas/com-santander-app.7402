.class public Lamg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lamg;->a:Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lamg;->a:Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;

    invoke-static {v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->a(Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;)Lamc;

    move-result-object v0

    invoke-virtual {v0}, Lamc;->a()V

    .line 94
    return-void
.end method
