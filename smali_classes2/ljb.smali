.class public Lljb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lljb;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lljb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lljb;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V

    .line 308
    return-void
.end method
