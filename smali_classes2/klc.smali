.class public Lklc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lklq;


# instance fields
.field private a:Lkla;


# direct methods
.method public constructor <init>(Lkla;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lklc;->a:Lkla;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lkla;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lklc;->a:Lkla;

    return-object v0
.end method
