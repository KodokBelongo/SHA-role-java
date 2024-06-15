<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".student-id").click(function() {
                var studentId = $(this).text();
                var studentName = $(this).data("name");
                alert("Student Name: " + studentName);
            });
        });
    </script>
</head>
<body>
    <h2>Welcome ${userId}</h2>
    <table border="1">
        <tr>
            <th>Department</th>
            <th>Student ID</th>
            <th>Marks</th>
            <th>Pass %</th>
        </tr>
        <tr>
            <td>Dep 1</td>
            <td class="student-id" data-name="Student 1"><a href="#">S1</a></td>
            <td>35</td>
            <td rowspan="4">75</td>
        </tr>
        <tr>
            <td></td>
            <td class="student-id" data-name="Student 2"><a href="#">S2</a></td>
            <td>70</td>
        </tr>
        <tr>
            <td></td>
            <td class="student-id" data-name="Student 3"><a href="#">S3</a></td>
            <td>60</td>
        </tr>
        <tr>
            <td></td>
            <td class="student-id" data-name="Student 4"><a href="#">S4</a></td>
            <td>90</td>
        </tr>
        <tr>
            <td>Dep 2</td>
            <td class="student-id" data-name="Student 5"><a href="#">S5</a></td>
            <td>30</td>
            <td>0</td>
        </tr>
        <tr>
            <td>Dep 3</td>
            <td class="student-id" data-name="Student 6"><a href="#">S6</a></td>
            <td>32</td>
            <td rowspan="2">33.33</td>
        </tr>
        <tr>
            <td></td>
            <td class="student-id" data-name="Student 7"><a href="#">S7</a></td>
            <td>70</td>
        </tr>
        <tr>
            <td></td>
            <td class="student-id" data-name="Student 8"><a href="#">S8</a></td>
            <td>20</td>
        </tr>
    </table>
</body>
</html>
