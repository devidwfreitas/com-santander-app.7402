.class public Lmgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lejy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lejy",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lmgj;->a:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lejz;Ljava/lang/reflect/Type;Lejx;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lejz;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmgj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lejz;Ljava/lang/reflect/Type;Lejx;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lmgj;->a(Lejz;Ljava/lang/reflect/Type;Lejx;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
