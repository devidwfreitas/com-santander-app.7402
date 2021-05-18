.class public Lhnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhnu;


# static fields
.field private static final a:Ljava/lang/String; = "https://santander.custhelp.com/app/chat/chat_santander/p/39"


# instance fields
.field private b:Lhnt;


# direct methods
.method public constructor <init>(Lhnt;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lhnv;->b:Lhnt;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lhnv;->b:Lhnt;

    const-string v1, "https://santander.custhelp.com/app/chat/chat_santander/p/39"

    invoke-interface {v0, v1}, Lhnt;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method
