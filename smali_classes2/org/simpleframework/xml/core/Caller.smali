.class Lorg/simpleframework/xml/core/Caller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final commit:Lorg/simpleframework/xml/core/Function;

.field private final complete:Lorg/simpleframework/xml/core/Function;

.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final persist:Lorg/simpleframework/xml/core/Function;

.field private final replace:Lorg/simpleframework/xml/core/Function;

.field private final resolve:Lorg/simpleframework/xml/core/Function;

.field private final validate:Lorg/simpleframework/xml/core/Function;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getValidate()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->validate:Lorg/simpleframework/xml/core/Function;

    .line 80
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getComplete()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->complete:Lorg/simpleframework/xml/core/Function;

    .line 81
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getReplace()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->replace:Lorg/simpleframework/xml/core/Function;

    .line 82
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getResolve()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->resolve:Lorg/simpleframework/xml/core/Function;

    .line 83
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getPersist()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->persist:Lorg/simpleframework/xml/core/Function;

    .line 84
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getCommit()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->commit:Lorg/simpleframework/xml/core/Function;

    .line 85
    iput-object p2, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->commit:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->commit:Lorg/simpleframework/xml/core/Function;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->complete:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->complete:Lorg/simpleframework/xml/core/Function;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    return-void
.end method

.method public persist(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->persist:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->persist:Lorg/simpleframework/xml/core/Function;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-void
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->replace:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->replace:Lorg/simpleframework/xml/core/Function;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    :cond_0
    return-object p1
.end method

.method public resolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->resolve:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->resolve:Lorg/simpleframework/xml/core/Function;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 125
    :cond_0
    return-object p1
.end method

.method public validate(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->validate:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/simpleframework/xml/core/Caller;->validate:Lorg/simpleframework/xml/core/Function;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-void
.end method
