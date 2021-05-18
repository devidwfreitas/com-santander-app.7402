.class public Liyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Liyc;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Liyc;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Liyc;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-static {v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;ZZ)V

    .line 248
    return-void
.end method
