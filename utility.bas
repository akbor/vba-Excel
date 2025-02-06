Function array2Dto1D(arr As Variant) As Variant
   ' takes in a 2D array. I wrote it for WorksheetFunction.Unique(ws.Columns("A")) it returns a 2D array. also filter out the blank
    Dim coll As Collection
    Dim element As Variant
    Dim i As Long, j As Long
    Dim output() As Variant
    
    Set coll = New Collection
       
        For i = LBound(arr, 1) To UBound(arr, 1)
            For j = LBound(arr, 2) To UBound(arr, 2)
                element = arr(i, j)
                If Not IsEmpty(element) And Len(Trim$(element)) > 0 Then
                    coll.Add element
                End If
            Next j
        Next i
 
    
    
    If coll.Count > 0 Then
        ReDim output(0 To coll.Count - 1)
        For i = 0 To coll.Count - 1
            output(i) = coll(i + 1)
        Next i
        array2Dto1D = output
    Else
        array2Dto1D = Array()
    End If
End Function
